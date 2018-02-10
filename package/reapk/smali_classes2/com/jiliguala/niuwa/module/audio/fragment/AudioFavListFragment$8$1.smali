.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8$1;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 447
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 442
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 433
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFavListFragment$8$1;->a(Ljava/lang/Void;)V

    return-void
.end method
