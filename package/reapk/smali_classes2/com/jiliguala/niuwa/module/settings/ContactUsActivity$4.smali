.class Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->save(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;->a(Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
