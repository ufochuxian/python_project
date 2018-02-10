.class Landroid/support/v4/widget/b$d;
.super Landroid/support/v4/widget/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/support/v4/widget/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 85
    invoke-static {p1, p2}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 86
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 95
    invoke-static {p1, p2}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 96
    return-void
.end method

.method public b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 90
    invoke-static {p1}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 100
    invoke-static {p1}, Landroid/support/v4/widget/e;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
