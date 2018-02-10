.class Landroid/support/v4/widget/ai$a;
.super Landroid/support/v4/widget/ai$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v4/widget/ai$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/aj;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-static {p1, p2}, Landroid/support/v4/widget/aj;->a(Landroid/widget/TextView;I)V

    .line 172
    return-void
.end method
