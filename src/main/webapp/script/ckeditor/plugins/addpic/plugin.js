(function () {
    //Section 1 : 按下自定义按钮时执行的代码
    var a = {
        exec: function (editor) {
            ckeditorImageUpload();
        }
    },
    b = 'addpic';
    CKEDITOR.plugins.add(b, {
        init: function (editor) {
            editor.addCommand(b, a);
            editor.ui.addButton('addpic', {
                label: '图片',
                icon: this.path + 'addpic.jpg',
                command: b
            });
        }
    });
})();