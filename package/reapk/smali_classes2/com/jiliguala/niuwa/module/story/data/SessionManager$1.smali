.class Lcom/jiliguala/niuwa/module/story/data/SessionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/SessionManager;->startSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/SessionManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/SessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/SessionManager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackAppInstalled()V

    .line 213
    return-void
.end method
