
/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
	SESprite image2;
	SESprite main;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("#CC99FF"), get_scene_width(), get_scene_height());
            rsc.prepare_image("lsp", "lsp", get_scene_width()*0.2);
            image2= add_sprite_for_image(SEImage.for_resource("lsp"));
            image2.move(0,0);
			rsc.prepare_image("main","main",get_scene_width()*0.15, get_scene_height()*0.15);
			main= add_sprite_for_image(SEImage.for_resource("main"));
	        main.move(get_scene_width()*0.43,get_scene_height()*0.03);
	}

 public void on_pointer_press(SEPointerInfo pi) {
            base.on_pointer_press(pi);
            if (pi.is_inside(0.30*get_scene_width(),0.02*get_scene_height(),0.30*get_scene_width(),0.14*get_scene_height())) {
                switch_scene(new Main());
            }
        } 

	public void cleanup() {
		base.cleanup();
	}
}
