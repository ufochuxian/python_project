.class Lcom/nineoldandroids/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/b/e;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/b/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nineoldandroids/b/e;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nineoldandroids/b/e$1;->a:Lcom/nineoldandroids/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nineoldandroids/b/e$1;->a:Lcom/nineoldandroids/b/e;

    invoke-static {v0}, Lcom/nineoldandroids/b/e;->a(Lcom/nineoldandroids/b/e;)V

    .line 132
    return-void
.end method
