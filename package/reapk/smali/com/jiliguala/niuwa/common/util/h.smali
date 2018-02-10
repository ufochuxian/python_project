.class public Lcom/jiliguala/niuwa/common/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "msgResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "title":Ljava/lang/String;
    :goto_0
    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1, v0}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    return-object v2

    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 56
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 49
    :cond_0
    if-lez p1, :cond_1

    .line 50
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 52
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 36
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "des"    # I
    .param p3, "btn"    # I
    .param p4, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p4}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIILcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentId"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param
    .param p2, "posBtnresid"    # I
    .param p3, "negBtnresid"    # I
    .param p4, "dInterface"    # Lcom/jiliguala/niuwa/common/util/h$a;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p4}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "posBtnresid"    # I
    .param p3, "negBtnresid"    # I
    .param p4, "dInterface"    # Lcom/jiliguala/niuwa/common/util/h$a;

    .prologue
    .line 90
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p4}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;
    .param p3, "btn"    # Ljava/lang/String;
    .param p4, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-static {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 78
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {v1, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "posBtn"    # Ljava/lang/String;
    .param p3, "negBtn"    # Ljava/lang/String;
    .param p4, "dInterface"    # Lcom/jiliguala/niuwa/common/util/h$a;

    .prologue
    const v8, 0x7f090156

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f0900fa

    .line 94
    new-instance v0, Landroid/app/Dialog;

    const v4, 0x7f1000b4

    invoke-direct {v0, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 96
    const v4, 0x7f0b0192

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 98
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 99
    .local v3, "width":I
    const/4 v1, -0x2

    .line 100
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    const v4, 0x7f09004c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const v4, 0x7f090157

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_1
    new-instance v2, Lcom/jiliguala/niuwa/common/util/h$1;

    invoke-direct {v2, v0, p4}, Lcom/jiliguala/niuwa/common/util/h$1;-><init>(Landroid/app/Dialog;Lcom/jiliguala/niuwa/common/util/h$a;)V

    .line 134
    .local v2, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-object v0

    .line 108
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # I
    .param p2, "des"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/jiliguala/niuwa/common/util/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, p2, v0, v0}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
