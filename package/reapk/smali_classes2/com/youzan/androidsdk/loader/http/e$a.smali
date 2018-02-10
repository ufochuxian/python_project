.class Lcom/youzan/androidsdk/loader/http/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/loader/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/youzan/androidsdk/loader/http/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/youzan/androidsdk/YouzanException;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMODE",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/youzan/androidsdk/loader/http/b;Ljava/lang/Object;Lcom/youzan/androidsdk/YouzanException;)V
    .locals 0
    .param p3, "error"    # Lcom/youzan/androidsdk/YouzanException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;TMODE",
            "L;",
            "Lcom/youzan/androidsdk/YouzanException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/e$a;, "Lcom/youzan/androidsdk/loader/http/e$a<TMODEL;>;"
    .local p1, "listener":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    .local p2, "data":Ljava/lang/Object;, "TMODEL;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/youzan/androidsdk/loader/http/e$a;->a:Lcom/youzan/androidsdk/loader/http/b;

    .line 177
    iput-object p2, p0, Lcom/youzan/androidsdk/loader/http/e$a;->c:Ljava/lang/Object;

    .line 178
    iput-object p3, p0, Lcom/youzan/androidsdk/loader/http/e$a;->b:Lcom/youzan/androidsdk/YouzanException;

    .line 179
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/e$a;, "Lcom/youzan/androidsdk/loader/http/e$a<TMODEL;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/e$a;->b:Lcom/youzan/androidsdk/YouzanException;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/e$a;->a:Lcom/youzan/androidsdk/loader/http/b;

    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/e$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/loader/http/b;->a(Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/e$a;->a:Lcom/youzan/androidsdk/loader/http/b;

    iget-object v1, p0, Lcom/youzan/androidsdk/loader/http/e$a;->b:Lcom/youzan/androidsdk/YouzanException;

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/loader/http/b;->a(Lcom/youzan/androidsdk/YouzanException;)V

    goto :goto_0
.end method
