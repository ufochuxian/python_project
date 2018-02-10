.class public Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;
.super Landroid/widget/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->setUp()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->setUp()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->setUp()V

    .line 28
    return-void
.end method

.method private setUp()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/helpers/TypefaceCache;->getRobotoBlack(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/views/RobotoBlackButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
