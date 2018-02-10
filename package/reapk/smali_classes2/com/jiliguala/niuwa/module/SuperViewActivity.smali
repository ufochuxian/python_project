.class public Lcom/jiliguala/niuwa/module/SuperViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v1, 0x7f0b0103

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/SuperViewActivity;->setContentView(I)V

    .line 21
    const v1, 0x7f09053c

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/SuperViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 22
    .local v0, "superView":Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 23
    new-instance v1, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/SuperViewActivity$1;-><init>(Lcom/jiliguala/niuwa/module/SuperViewActivity;Lcom/jiliguala/niuwa/common/widget/customview/SuperView;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 36
    return-void
.end method
