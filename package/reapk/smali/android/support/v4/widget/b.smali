.class public final Landroid/support/v4/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/b$a;,
        Landroid/support/v4/widget/b$d;,
        Landroid/support/v4/widget/b$b;,
        Landroid/support/v4/widget/b$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/widget/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .local v0, "sdk":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v1, Landroid/support/v4/widget/b$a;

    invoke-direct {v1}, Landroid/support/v4/widget/b$a;-><init>()V

    sput-object v1, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 41
    new-instance v1, Landroid/support/v4/widget/b$d;

    invoke-direct {v1}, Landroid/support/v4/widget/b$d;-><init>()V

    sput-object v1, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Landroid/support/v4/widget/b$b;

    invoke-direct {v1}, Landroid/support/v4/widget/b$b;-><init>()V

    sput-object v1, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 136
    sget-object v0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/b$c;->b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 126
    sget-object v0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/b$c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 127
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 152
    sget-object v0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/b$c;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    return-void
.end method

.method public static b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/b$c;->c(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 172
    sget-object v0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/b$c;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/b$c;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
