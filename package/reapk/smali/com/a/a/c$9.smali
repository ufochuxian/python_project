.class Lcom/a/a/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/a/a/c;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/a/a/c$9;->d:Lcom/a/a/c;

    iput-object p2, p0, Lcom/a/a/c$9;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/a/a/c$9;->b:J

    iput-wide p5, p0, Lcom/a/a/c$9;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 994
    iget-object v1, p0, Lcom/a/a/c$9;->d:Lcom/a/a/c;

    iget-object v0, p0, Lcom/a/a/c$9;->d:Lcom/a/a/c;

    iget-object v2, v0, Lcom/a/a/c;->n:Lokhttp3/y;

    iget-object v3, p0, Lcom/a/a/c$9;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/a/a/c$9;->b:J

    iget-wide v6, p0, Lcom/a/a/c$9;->c:J

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/c;->a(Lokhttp3/y;Ljava/lang/String;JJ)V

    .line 995
    return-void
.end method
