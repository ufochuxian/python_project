.class final Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;
.super Landroid/app/Presentation;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkPresentationHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PresentationScreen"
.end annotation


# instance fields
.field private mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

.field private mDisplay:Landroid/view/Display;

.field private mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkPresentationHost;Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;Landroid/view/Display;)V
    .locals 1
    .param p2, "session"    # Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;

    .line 232
    iget-object v0, p2, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 234
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .line 235
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mDisplay:Landroid/view/Display;

    .line 236
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->loadUrl(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 244
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->setContentView(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    .line 253
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->onPresentationScreenClose(Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;)V

    .line 254
    return-void
.end method
