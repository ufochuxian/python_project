.class Lorg/xwalk/core/XWalkActivityDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkActivityDelegate;->onActivateFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkActivityDelegate;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkActivityDelegate;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXWalkUpdateCancelled()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void
.end method

.method public onXWalkUpdateCompleted()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;)V

    .line 131
    return-void
.end method

.method public onXWalkUpdateFailed()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 126
    return-void
.end method

.method public onXWalkUpdateProgress(I)V
    .locals 0
    .param p1, "percentage"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onXWalkUpdateStarted()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
