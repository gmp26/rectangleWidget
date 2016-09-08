console.log("HTMLWidgets rectangleWidget loaded");

HTMLWidgets.widget({

  name: 'rectangleWidget',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance
    console.log("calling factory");

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        //el.innerText = x.message;

        console.log("x", x);
        rWrappers.tangleRectangle.renderRectangle(el, x.fill, x.w, x.h);

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size
        console.log("resizing!");

      }

    };
  }
});
