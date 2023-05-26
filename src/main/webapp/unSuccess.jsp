<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
* {
	border: 0;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
:root {
	font-size: calc(16px + (20 - 16)*(100vw - 320px)/(1024 - 320));
}
body {
	background: #f1f1f1;
	color: #242424;
	font: 1em "Hind", Arial, sans-serif;
	line-height: 1.5;
}
a {
	color: #2762f3;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	color: #0c48db;
}
a:visited {
	color: #5785f6;
}
h1 {
	font: 2em "Ubuntu", Arial, sans-serif;
	line-height: 1.5;
	margin-bottom: .75em;
}
p, ul {
	margin-bottom: 1.5em;
}
ul {
	margin-left: 1.5em;
}
main, canvas {
	display: block;
}
canvas {
	display: block;
	margin: 0 auto 1.5em auto;
	width: 100%;
	height: auto;
	-webkit-tap-highlight-color: transparent;
}
.wrap {
	margin: auto;
	padding: 1.5em;
	max-width: 37.5em;
}
@media (prefers-color-scheme: dark) {
	body {
		background: #242424;
		color: #f1f1f1;
	}
	a {
		color: #5785f6;
	}
	a:active {
		color: #2762f3;
	}
	a:visited {
		color: #87a9f9;
	}
}
</style>
</head>
<body>
	<main>
	<div class="wrap">
		<h1>Uh-Oh! Error occurred while processing your request</h1>
		<canvas width="560" height="312"></canvas>
		<p>Wait a couple seconds and retry. If the error persists please contact your customer services</p>
		<p>What you can do:</p>
		<ul>
			<li>Go back <a href="#">home</a></li>
			<li><a href="#">Contact</a> to me if you believe this happened in error</li>
		</ul>
	</div>
	</main>
<script>
window.addEventListener("DOMContentLoaded",game);

function game() {
	var canvas = document.querySelector("canvas"),
		c = canvas.getContext("2d"),
		W = canvas.width,
		H = canvas.height,
		S = 2,
		assets = [
			"https://i.ibb.co/dDcTzrQ/nowhere.png",
			"https://i.ibb.co/S7zPTv5/tumbleweed.png"
		],
		sprites = [],
		score = 0,
		world = {
			friction: 0.1,
			gravity: 0.1
		},
		tumbleweed = {
			inPlay: false,
			x: -160,
			y: 200,
			r: 32,
			rotation: 0,
			xVel: 10,
			yVel: 0,
			mass: 2.5,
			restitution: 0.3
		},
		loadSprite = url => {
			return new Promise((resolve,reject) => {
				let sprite = new Image();
				sprite.src = url;
				sprite.onload = () => {
					resolve(sprite);
				};
				sprite.onerror = () => {
					reject(url);
				};
			});
		},
		spritePromises = assets.map(loadSprite),
		applyForce = e => {
			let ex = e.clientX - canvas.offsetLeft,
				ey = e.clientY - (canvas.offsetTop - window.pageYOffset);

			ex = ex / canvas.offsetWidth * W;
			ey = ey / canvas.offsetHeight * H;

			let insideX = Math.abs(ex - tumbleweed.x) <= tumbleweed.r,
				insideY = Math.abs(ey - tumbleweed.y) <= tumbleweed.r;

			if (insideX && insideY) {
				let xForce = tumbleweed.x - ex, 
					yForce = tumbleweed.y - ey,
					xAccel = xForce / tumbleweed.mass,
					yAccel = yForce / tumbleweed.mass;

				tumbleweed.xVel += xAccel;
				tumbleweed.yVel += yAccel;

				++score;
				
				// when enabled, the tumbleweed will be allowed to touch the left side after rolling in
				if (!tumbleweed.inPlay)
					tumbleweed.inPlay = true;
			}
		},
		update = () => {
			// A. Background
			c.clearRect(0,0,W,H);
			c.drawImage(sprites[0],0,0,W,H);

			// B. Tumbleweed
			tumbleweed.x += tumbleweed.xVel;
			
			// 1. Friction to the right
			if (tumbleweed.xVel > 0) {
				tumbleweed.xVel -= world.friction;
				if (tumbleweed.xVel < 0)
					tumbleweed.xVel = 0;
			
			// 2. Friction to the left
			} else if (tumbleweed.xVel < 0) {
				tumbleweed.xVel += world.friction;
				if (tumbleweed.xVel > 0)
					tumbleweed.xVel = 0;
			}
			
			// 3. Horizontal collision
			let hitLeftBound = tumbleweed.x <= tumbleweed.r && tumbleweed.inPlay,
				hitRightBound = tumbleweed.x >= W - tumbleweed.r;

			if (hitLeftBound)
				tumbleweed.x = tumbleweed.r;
			else if (hitRightBound)
				tumbleweed.x = W - tumbleweed.r;

			if (hitLeftBound || hitRightBound)
				tumbleweed.xVel *= -tumbleweed.restitution;
			
			// 4. Vertical collision
			tumbleweed.y += tumbleweed.yVel;
			tumbleweed.yVel += world.gravity;

			let hitTopBound = tumbleweed.y <= tumbleweed.r,
				hitBottomBound = tumbleweed.y >= H - tumbleweed.r;

			if (hitTopBound) {
				tumbleweed.y = tumbleweed.r;

			} else if (hitBottomBound) {
				tumbleweed.y = H - tumbleweed.r;
				score = 0;
			}
			if (hitTopBound || hitBottomBound)
				tumbleweed.yVel *= -tumbleweed.restitution;
			
			// 5. Rotation
			tumbleweed.rotation += tumbleweed.xVel;

			if (tumbleweed.rotation >= 360)
				tumbleweed.rotation -= 360;
			else if (tumbleweed.rotation < 0)
				tumbleweed.rotation += 360;
			
			// 6. Drawing
			c.save();
			c.translate(tumbleweed.x,tumbleweed.y);
			c.rotate(tumbleweed.rotation * Math.PI/180);
			c.drawImage(
				sprites[1],
				-tumbleweed.r,
				-tumbleweed.r,
				tumbleweed.r * 2,
				tumbleweed.r * 2
			);
			c.translate(-tumbleweed.x,-tumbleweed.y);
			c.restore();

			// C. Score
			if (score > 0) {
				c.fillStyle = "#7f7f7f";
				c.font = "48px Hind, sans-serif";
				c.textAlign = "center";
				c.fillText(score,W/2,48);
			}
		},
		render = () => {
			update();
			requestAnimationFrame(render);
		};
	
	// ensure proper resolution
	canvas.width = W * S;
	canvas.height = H * S;
	c.scale(S,S);
	
	// load sprites
	Promise.all(spritePromises).then(loaded => {
		for (let sprite of loaded)
			sprites.push(sprite);

		render();
		canvas.addEventListener("click",applyForce);

	}).catch(urls => {
		console.log(urls+" couldn't be loaded");
	});
}
</script>
</body>
</html>