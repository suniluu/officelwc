({
    init: function (cmp) {
        cmp.set('v.SfdcDay', new Date('1999-02-01'));
        cmp.set('v.today9AM', new Date().setHours(8, 0, 0, 0));
        cmp.set('v.now', Date.now());
        cmp.set('v.future20500104', new Date('2999-01-04'));
    }
});