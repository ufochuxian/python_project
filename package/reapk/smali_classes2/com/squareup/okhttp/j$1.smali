.class Lcom/squareup/okhttp/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/j;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/j;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/j;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/squareup/okhttp/j$1;->a:Lcom/squareup/okhttp/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/squareup/okhttp/j$1;->a:Lcom/squareup/okhttp/j;

    invoke-static {v0}, Lcom/squareup/okhttp/j;->a(Lcom/squareup/okhttp/j;)V

    .line 98
    return-void
.end method
