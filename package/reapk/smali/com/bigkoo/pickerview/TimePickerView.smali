.class public Lcom/bigkoo/pickerview/TimePickerView;
.super Lcom/bigkoo/pickerview/e/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/TimePickerView$a;,
        Lcom/bigkoo/pickerview/TimePickerView$Type;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "submit"

.field private static final g:Ljava/lang/String; = "cancel"


# instance fields
.field a:Lcom/bigkoo/pickerview/e/c;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private h:Lcom/bigkoo/pickerview/TimePickerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/TimePickerView$Type;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/bigkoo/pickerview/TimePickerView$Type;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/e/a;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v8, Lcom/bigkoo/pickerview/c$i;->pickerview_time:I

    iget-object v9, p0, Lcom/bigkoo/pickerview/TimePickerView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget v0, Lcom/bigkoo/pickerview/c$g;->btnSubmit:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->c:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->c:Landroid/view/View;

    const-string v8, "submit"

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    sget v0, Lcom/bigkoo/pickerview/c$g;->btnCancel:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->d:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->d:Landroid/view/View;

    const-string v8, "cancel"

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v0, Lcom/bigkoo/pickerview/c$g;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->e:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/bigkoo/pickerview/c$g;->timepicker:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/TimePickerView;->b(I)Landroid/view/View;

    move-result-object v7

    .line 46
    .local v7, "timepickerview":Landroid/view/View;
    new-instance v0, Lcom/bigkoo/pickerview/e/c;

    invoke-direct {v0, v7, p2}, Lcom/bigkoo/pickerview/e/c;-><init>(Landroid/view/View;Lcom/bigkoo/pickerview/TimePickerView$Type;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 50
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 52
    .local v1, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 53
    .local v2, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 54
    .local v3, "day":I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 55
    .local v4, "hours":I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 56
    .local v5, "minute":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual/range {v0 .. v5}, Lcom/bigkoo/pickerview/e/c;->a(IIIII)V

    .line 58
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/e/c;->a(I)V

    .line 68
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/e/c;->b(I)V

    .line 69
    return-void
.end method

.method public a(Lcom/bigkoo/pickerview/TimePickerView$a;)V
    .locals 0
    .param p1, "timeSelectListener"    # Lcom/bigkoo/pickerview/TimePickerView$a;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bigkoo/pickerview/TimePickerView;->h:Lcom/bigkoo/pickerview/TimePickerView$a;

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 77
    .local v6, "calendar":Ljava/util/Calendar;
    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 82
    .local v1, "year":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 83
    .local v2, "month":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 84
    .local v3, "day":I
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 85
    .local v4, "hours":I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 86
    .local v5, "minute":I
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual/range {v0 .. v5}, Lcom/bigkoo/pickerview/e/c;->a(IIIII)V

    .line 87
    return-void

    .line 80
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day":I
    .end local v4    # "hours":I
    .end local v5    # "minute":I
    :cond_0
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/e/c;->a(Z)V

    .line 115
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->f()V

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->h:Lcom/bigkoo/pickerview/TimePickerView$a;

    if-eqz v3, :cond_1

    .line 126
    :try_start_0
    sget-object v3, Lcom/bigkoo/pickerview/e/c;->a:Ljava/text/DateFormat;

    iget-object v4, p0, Lcom/bigkoo/pickerview/TimePickerView;->a:Lcom/bigkoo/pickerview/e/c;

    invoke-virtual {v4}, Lcom/bigkoo/pickerview/e/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 127
    .local v0, "date":Ljava/util/Date;
    iget-object v3, p0, Lcom/bigkoo/pickerview/TimePickerView;->h:Lcom/bigkoo/pickerview/TimePickerView$a;

    invoke-interface {v3, v0}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "date":Ljava/util/Date;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/TimePickerView;->f()V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method
