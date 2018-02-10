.class Lcom/a/a/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->j(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/a/a/c;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/a/a/c$5;->b:Lcom/a/a/c;

    iput-wide p2, p0, Lcom/a/a/c$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/a/a/c$5;->b:Lcom/a/a/c;

    iget-wide v2, p0, Lcom/a/a/c$5;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/a/a/c;->g(J)Z

    .line 758
    iget-object v0, p0, Lcom/a/a/c$5;->b:Lcom/a/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/c;Z)Z

    .line 759
    return-void
.end method
