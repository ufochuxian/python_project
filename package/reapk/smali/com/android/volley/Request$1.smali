.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/volley/Request;


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/volley/Request;

    .prologue
    .line 241
    .local p0, "this":Lcom/android/volley/Request$1;, "Lcom/android/volley/Request$1;"
    iput-object p1, p0, Lcom/android/volley/Request$1;->c:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    .local p0, "this":Lcom/android/volley/Request$1;, "Lcom/android/volley/Request$1;"
    iget-object v0, p0, Lcom/android/volley/Request$1;->c:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$000(Lcom/android/volley/Request;)Lcom/android/volley/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/n$a;->a(Ljava/lang/String;J)V

    .line 245
    iget-object v0, p0, Lcom/android/volley/Request$1;->c:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$000(Lcom/android/volley/Request;)Lcom/android/volley/n$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/n$a;->a(Ljava/lang/String;)V

    .line 246
    return-void
.end method
