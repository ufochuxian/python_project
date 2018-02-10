.class public Lcom/jiliguala/niuwa/module/story/views/ShadowView;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/views/ShadowView;->setBackgroundColor(I)V

    .line 20
    return-void
.end method
