.class public Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x220


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_0
    const/16 v0, 0x1f

    .line 34
    :goto_0
    return v0

    .line 32
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 34
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/View;FF)Lcom/nineoldandroids/a/l;
    .locals 13
    .param p0, "labelToAnimate"    # Landroid/view/View;
    .param p1, "decreaseRatio"    # F
    .param p2, "increaseRatio"    # F

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 41
    const/4 v7, 0x0

    invoke-static {v7, v8}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v0

    .line 42
    .local v0, "k0":Lcom/nineoldandroids/a/j;
    const v7, 0x3e8ccccd    # 0.275f

    invoke-static {v7, p1}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v1

    .line 43
    .local v1, "k1":Lcom/nineoldandroids/a/j;
    const v7, 0x3f30a3d7    # 0.69f

    invoke-static {v7, p2}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v2

    .line 44
    .local v2, "k2":Lcom/nineoldandroids/a/j;
    invoke-static {v8, v8}, Lcom/nineoldandroids/a/j;->a(FF)Lcom/nineoldandroids/a/j;

    move-result-object v3

    .line 46
    .local v3, "k3":Lcom/nineoldandroids/a/j;
    const-string v7, "scaleX"

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/nineoldandroids/a/j;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;[Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/n;

    move-result-object v5

    .line 47
    .local v5, "scaleX":Lcom/nineoldandroids/a/n;
    const-string v7, "scaleY"

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/nineoldandroids/a/j;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;[Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/n;

    move-result-object v6

    .line 48
    .local v6, "scaleY":Lcom/nineoldandroids/a/n;
    new-array v7, v11, [Lcom/nineoldandroids/a/n;

    aput-object v5, v7, v9

    aput-object v6, v7, v10

    invoke-static {p0, v7}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;[Lcom/nineoldandroids/a/n;)Lcom/nineoldandroids/a/l;

    move-result-object v4

    .line 49
    .local v4, "pulseAnimator":Lcom/nineoldandroids/a/l;
    const-wide/16 v8, 0x220

    invoke-virtual {v4, v8, v9}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    .line 51
    return-object v4
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/datetimepicker/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 2
    .param p0, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
