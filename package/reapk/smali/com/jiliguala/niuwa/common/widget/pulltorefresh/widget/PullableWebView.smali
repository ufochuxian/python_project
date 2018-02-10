.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/PullableWebView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
