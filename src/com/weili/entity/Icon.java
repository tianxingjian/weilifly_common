package com.weili.entity;
public class Icon {
		private int width;
		private int height;
		private int location;
		private int tor;
		private int xlocation;
		private int lb;

		public Icon(int w, int h, int l, int t, int x, int lb) {
			this.width = w;
			this.height = h;
			this.location = l;
			this.tor = t;
			this.xlocation = x;
			this.lb = lb;
		}

		public int getWidth() {
			return width;
		}

		public void setWidth(int width) {
			this.width = width;
		}

		public int getHeight() {
			return height;
		}

		public void setHeight(int height) {
			this.height = height;
		}

		public int getLocation() {
			return location;
		}

		public void setLocation(int location) {
			this.location = location;
		}

		public int getTor() {
			return tor;
		}

		public void setTor(int tor) {
			this.tor = tor;
		}

		public int getXlocation() {
			return xlocation;
		}

		public void setXlocation(int xlocation) {
			this.xlocation = xlocation;
		}

		public int getLb() {
			return lb;
		}

		public void setLb(int lb) {
			this.lb = lb;
		}

		

	}
