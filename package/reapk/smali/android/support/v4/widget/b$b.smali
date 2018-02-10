.class Landroid/support/v4/widget/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/support/v4/widget/d;->c(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 58
    invoke-static {p1, p2}, Landroid/support/v4/widget/d;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 59
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 68
    invoke-static {p1, p2}, Landroid/support/v4/widget/d;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    return-void
.end method

.method public b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/support/v4/widget/d;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/support/v4/widget/d;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
