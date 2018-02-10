.class Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/CoverView;-><init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/json/Cover;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;",
        "Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/views/book/CoverView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/CoverView;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/views/book/CoverView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/CoverView;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V
    .locals 4
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->b:Lcom/jiliguala/niuwa/module/story/views/book/CoverView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->access$000(Lcom/jiliguala/niuwa/module/story/views/book/CoverView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->get()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 47
    return-void
.end method

.method public synthetic onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    check-cast p2, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;->a(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V

    return-void
.end method
