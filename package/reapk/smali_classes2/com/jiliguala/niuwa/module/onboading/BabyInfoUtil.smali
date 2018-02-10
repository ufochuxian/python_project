.class public Lcom/jiliguala/niuwa/module/onboading/BabyInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBabyIcon(ILandroid/widget/ImageView;)V
    .locals 3
    .param p0, "age"    # I
    .param p1, "babyIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 14
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 16
    :cond_0
    if-le p0, v2, :cond_1

    .line 17
    const v0, 0x7f08020b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 18
    :cond_1
    if-lt p0, v1, :cond_2

    if-gt p0, v2, :cond_2

    .line 19
    const v0, 0x7f08020a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 20
    :cond_2
    if-lt p0, v0, :cond_3

    if-ge p0, v1, :cond_3

    .line 21
    const v0, 0x7f080207

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 22
    :cond_3
    if-ltz p0, :cond_4

    if-ge p0, v0, :cond_4

    .line 23
    const v0, 0x7f080208

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 25
    :cond_4
    const v0, 0x7f08020c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
