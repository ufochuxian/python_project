.class Lrx/b$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->a(Lrx/b$b;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b$b;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/b$b;)V
    .locals 0

    .prologue
    .line 1572
    iput-object p1, p0, Lrx/b$16;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$16;->a:Lrx/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 4
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 1576
    :try_start_0
    iget-object v3, p0, Lrx/b$16;->a:Lrx/b$b;

    invoke-static {v3}, Lrx/f/c;->a(Lrx/b$b;)Lrx/b$b;

    move-result-object v1

    .line 1577
    .local v1, "onLiftDecorated":Lrx/b$b;
    invoke-interface {v1, p1}, Lrx/b$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/d;

    .line 1579
    .local v2, "sw":Lrx/d;
    iget-object v3, p0, Lrx/b$16;->b:Lrx/b;

    invoke-virtual {v3, v2}, Lrx/b;->a(Lrx/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1585
    return-void

    .line 1580
    .end local v1    # "onLiftDecorated":Lrx/b$b;
    .end local v2    # "sw":Lrx/d;
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1582
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1583
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/b;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1572
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/b$16;->a(Lrx/d;)V

    return-void
.end method
