.class Lcom/jiliguala/niuwa/services/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/services/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/e;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/services/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/services/e;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/e$1;->a:Lcom/jiliguala/niuwa/services/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/e$1;->a:Lcom/jiliguala/niuwa/services/e;

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/e;->a(Lcom/jiliguala/niuwa/services/e;)V

    .line 160
    return-void
.end method
