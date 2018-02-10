.class Landroid/support/v7/app/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/support/v7/app/g$a;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Landroid/support/v7/a/b$b;->homeAsUpIndicator:I

    aput v5, v4, v6

    .line 207
    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 209
    .local v0, "a":Landroid/support/v7/widget/at;
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 211
    return-object v1
.end method

.method public a(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 236
    iget-object v1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v1}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 237
    .local v0, "ab":Landroid/support/v7/app/a;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->l(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 227
    iget-object v1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v1}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 228
    .local v0, "ab":Landroid/support/v7/app/a;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/support/v7/app/a;->l(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->p()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v1}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 222
    .local v0, "ab":Landroid/support/v7/app/a;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->g()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
