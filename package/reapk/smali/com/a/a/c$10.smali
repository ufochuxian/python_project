.class Lcom/a/a/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->a(Lokhttp3/y;Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/a/a/c;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iput-wide p2, p0, Lcom/a/a/c$10;->a:J

    iput-wide p4, p0, Lcom/a/a/c$10;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1095
    iget-wide v0, p0, Lcom/a/a/c$10;->a:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    iget-wide v2, p0, Lcom/a/a/c$10;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/a/a/f;->c(J)V

    .line 1097
    :cond_0
    iget-wide v0, p0, Lcom/a/a/c$10;->b:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    iget-wide v2, p0, Lcom/a/a/c$10;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/a/a/f;->d(J)V

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1100
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->o:Lcom/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/f;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    invoke-static {v2}, Lcom/a/a/c;->d(Lcom/a/a/c;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->w:Lcom/a/a/l;

    new-instance v1, Lcom/a/a/c$10$1;

    invoke-direct {v1, p0}, Lcom/a/a/c$10$1;-><init>(Lcom/a/a/c$10;)V

    invoke-virtual {v0, v1}, Lcom/a/a/l;->a(Ljava/lang/Runnable;)V

    .line 1111
    :goto_0
    return-void

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    invoke-static {v0, v4}, Lcom/a/a/c;->b(Lcom/a/a/c;Z)Z

    .line 1109
    iget-object v0, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/c$10;->c:Lcom/a/a/c;

    invoke-static {v1}, Lcom/a/a/c;->f(Lcom/a/a/c;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/c;I)I

    goto :goto_0
.end method
