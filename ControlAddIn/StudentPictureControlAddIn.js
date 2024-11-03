var StudentPictureControlAddIn = (function () {
    var container;

    function renderImage(base64Data) {
        if (container) {
            container.innerHTML = '';
            if (base64Data) {
                var img = document.createElement('img');
                img.src = "data:image/png;base64," + base64Data;
                img.style.maxWidth = '100%';
                img.style.maxHeight = '100%';
                container.appendChild(img);
            }
        }
    }

    return {
        initialize: function (element) {
            container = element;
        },
        UpdateImage: function (imageUrl) {
            renderImage(imageUrl);
        },
        ClearImage: function () {
            renderImage('');
        },
        SetImage: function (base64Data) {
            renderImage(base64Data);
        }
    };
})();
