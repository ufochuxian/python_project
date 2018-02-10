.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;
.super Lcom/bumptech/glide/g/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/j",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/bumptech/glide/g/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/g/a/c;)V
    .locals 4
    .param p1, "resource"    # Landroid/graphics/Bitmap;
    .param p2, "glideAnimation"    # Lcom/bumptech/glide/g/a/c;

    .prologue
    const/4 v3, 0x0

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->c:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .line 587
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 586
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 591
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0

    .prologue
    .line 582
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/g/a/c;)V

    return-void
.end method
