.class Lorg/xwalk/core/XWalkUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater;->updateXWalkRuntime()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$1;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$1;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$000(Lorg/xwalk/core/XWalkUpdater;)V

    .line 366
    return-void
.end method
