.class public final Lrx/internal/operators/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/aq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile c:Z


# instance fields
.field final a:Lrx/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/aq;, "Lrx/internal/operators/aq<TT;>;"
    .local p1, "source":Lrx/e$a;, "Lrx/e$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/aq;->a:Lrx/e$a;

    .line 43
    invoke-static {}, Lrx/internal/operators/aq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/aq;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 9

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 49
    .local v6, "stacktraceElements":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Assembly trace:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 52
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "row":Ljava/lang/String;
    sget-boolean v7, Lrx/internal/operators/aq;->c:Z

    if-nez v7, :cond_2

    .line 54
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const-string v7, "RxJavaHooks."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    const-string v7, "OnSubscribeOnAssembly"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    const-string v7, ".junit.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 66
    const-string v7, ".junit4.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    const-string v7, ".junit.internal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 72
    const-string v7, "sun.reflect"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 75
    const-string v7, "java.lang.Thread."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    const-string v7, "ThreadPoolExecutor"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    const-string v7, "org.apache.catalina."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    const-string v7, "org.apache.tomcat."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 88
    :cond_2
    const-string v7, "\n at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "row":Ljava/lang/String;
    :cond_3
    const-string v7, "\nOriginal exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/aq;, "Lrx/internal/operators/aq<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/aq;->a:Lrx/e$a;

    new-instance v1, Lrx/internal/operators/aq$a;

    iget-object v2, p0, Lrx/internal/operators/aq;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/aq$a;-><init>(Lrx/l;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/e$a;->call(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/aq;, "Lrx/internal/operators/aq<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/aq;->a(Lrx/l;)V

    return-void
.end method
