.class final Lrx/internal/operators/ed$a$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ed$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/internal/util/j;

.field final synthetic b:Lrx/internal/operators/ed$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/ed$a;)V
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    iput-object p1, p0, Lrx/internal/operators/ed$a$a;->b:Lrx/internal/operators/ed$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 293
    invoke-static {}, Lrx/internal/util/j;->b()Lrx/internal/util/j;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/ed$a$a;->a:Lrx/internal/util/j;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/ed$a$a;->request(J)V

    .line 302
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/ed$a$a;->a:Lrx/internal/util/j;

    invoke-virtual {v0}, Lrx/internal/util/j;->d()V

    .line 307
    iget-object v0, p0, Lrx/internal/operators/ed$a$a;->b:Lrx/internal/operators/ed$a;

    invoke-virtual {v0}, Lrx/internal/operators/ed$a;->a()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    iget-object v0, p0, Lrx/internal/operators/ed$a$a;->b:Lrx/internal/operators/ed$a;

    iget-object v0, v0, Lrx/internal/operators/ed$a;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/ed$a$a;->a:Lrx/internal/util/j;

    invoke-virtual {v1, p1}, Lrx/internal/util/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/ed$a$a;->b:Lrx/internal/operators/ed$a;

    invoke-virtual {v1}, Lrx/internal/operators/ed$a;->a()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/ed$a$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/ed$a$a;, "Lrx/internal/operators/ed$a<TR;>.a;"
    sget v0, Lrx/internal/util/j;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ed$a$a;->request(J)V

    .line 298
    return-void
.end method
