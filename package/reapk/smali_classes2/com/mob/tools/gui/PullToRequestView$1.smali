.class Lcom/mob/tools/gui/PullToRequestView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRequestView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/gui/PullToRequestView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestView$1;->a:Lcom/mob/tools/gui/PullToRequestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestView$1;->a:Lcom/mob/tools/gui/PullToRequestView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestView;->a(Lcom/mob/tools/gui/PullToRequestView;)V

    .line 49
    return-void
.end method
