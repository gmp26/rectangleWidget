HTMLWidgets.widget({

  name: 'rectangleWidget',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        //el.innerText = "hi there"; //x.message;

        console.log("rendering!");

        rWrappers.tangleRectangle.renderSquare(el, "#fa0", "100px");

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
