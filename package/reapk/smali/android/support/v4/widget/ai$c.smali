.class Landroid/support/v4/widget/ai$c;
.super Landroid/support/v4/widget/ai$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v4/widget/ai$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "start"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p3, "top"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p5, "bottom"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/am;->a(Landroid/widget/TextView;IIII)V

    .line 129
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/am;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/am;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-static {p1}, Landroid/support/v4/widget/am;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
