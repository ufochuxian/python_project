.class Lcom/nineoldandroids/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/b/c;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/b/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nineoldandroids/b/c;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nineoldandroids/b/c$1;->a:Lcom/nineoldandroids/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nineoldandroids/b/c$1;->a:Lcom/nineoldandroids/b/c;

    invoke-static {v0}, Lcom/nineoldandroids/b/c;->a(Lcom/nineoldandroids/b/c;)V

    .line 127
    return-void
.end method
