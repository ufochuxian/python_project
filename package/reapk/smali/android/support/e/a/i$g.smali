.class Landroid/support/e/a/i$g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/e/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 918
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 919
    iput-object p1, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 920
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Landroid/support/e/a/i;

    invoke-direct {v0}, Landroid/support/e/a/i;-><init>()V

    .line 925
    .local v0, "drawableCompat":Landroid/support/e/a/i;
    iget-object v1, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/e/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 926
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 931
    new-instance v0, Landroid/support/e/a/i;

    invoke-direct {v0}, Landroid/support/e/a/i;-><init>()V

    .line 932
    .local v0, "drawableCompat":Landroid/support/e/a/i;
    iget-object v1, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/e/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 933
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 938
    new-instance v0, Landroid/support/e/a/i;

    invoke-direct {v0}, Landroid/support/e/a/i;-><init>()V

    .line 939
    .local v0, "drawableCompat":Landroid/support/e/a/i;
    iget-object v1, p0, Landroid/support/e/a/i$g;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 940
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/e/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 941
    return-object v0
.end method