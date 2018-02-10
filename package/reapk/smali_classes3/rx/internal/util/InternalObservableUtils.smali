.class public final enum Lrx/internal/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/InternalObservableUtils$c;,
        Lrx/internal/util/InternalObservableUtils$a;,
        Lrx/internal/util/InternalObservableUtils$m;,
        Lrx/internal/util/InternalObservableUtils$k;,
        Lrx/internal/util/InternalObservableUtils$j;,
        Lrx/internal/util/InternalObservableUtils$l;,
        Lrx/internal/util/InternalObservableUtils$e;,
        Lrx/internal/util/InternalObservableUtils$n;,
        Lrx/internal/util/InternalObservableUtils$p;,
        Lrx/internal/util/InternalObservableUtils$o;,
        Lrx/internal/util/InternalObservableUtils$i;,
        Lrx/internal/util/InternalObservableUtils$d;,
        Lrx/internal/util/InternalObservableUtils$b;,
        Lrx/internal/util/InternalObservableUtils$q;,
        Lrx/internal/util/InternalObservableUtils$f;,
        Lrx/internal/util/InternalObservableUtils$h;,
        Lrx/internal/util/InternalObservableUtils$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/InternalObservableUtils;

.field public static final COUNTER:Lrx/internal/util/InternalObservableUtils$g;

.field static final ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$e;

.field public static final ERROR_NOT_IMPLEMENTED:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Lrx/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e$b",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$h;

.field public static final OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$f;

.field static final RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$o;

.field public static final TO_ARRAY:Lrx/internal/util/InternalObservableUtils$q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/InternalObservableUtils;

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    .line 38
    new-instance v0, Lrx/internal/util/InternalObservableUtils$h;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$h;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$h;

    .line 43
    new-instance v0, Lrx/internal/util/InternalObservableUtils$f;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$f;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$f;

    .line 47
    new-instance v0, Lrx/internal/util/InternalObservableUtils$q;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$q;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lrx/internal/util/InternalObservableUtils$q;

    .line 49
    new-instance v0, Lrx/internal/util/InternalObservableUtils$o;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$o;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$o;

    .line 54
    new-instance v0, Lrx/internal/util/InternalObservableUtils$g;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$g;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lrx/internal/util/InternalObservableUtils$g;

    .line 56
    new-instance v0, Lrx/internal/util/InternalObservableUtils$e;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$e;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$e;

    .line 61
    new-instance v0, Lrx/internal/util/InternalObservableUtils$c;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$c;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lrx/c/c;

    .line 63
    new-instance v0, Lrx/internal/operators/bj;

    invoke-static {}, Lrx/internal/util/o;->a()Lrx/c/p;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/bj;-><init>(Lrx/c/p;Z)V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lrx/e$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method public static createCollectorCaller(Lrx/c/d;)Lrx/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<TR;-TT;>;)",
            "Lrx/c/q",
            "<TR;TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "collector":Lrx/c/d;, "Lrx/c/d<TR;-TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$a;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$a;-><init>(Lrx/c/d;)V

    return-object v0
.end method

.method public static createRepeatDematerializer(Lrx/c/p;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Void;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$i;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$i;-><init>(Lrx/c/p;)V

    return-object v0
.end method

.method public static createReplaySelectorAndObserveOn(Lrx/c/p;Lrx/h;)Lrx/c/p;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;",
            "Lrx/h;",
            ")",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<TT;>;",
            "Lrx/e",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$p;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$p;-><init>(Lrx/c/p;Lrx/h;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/e;)Lrx/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/c/o",
            "<",
            "Lrx/d/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$l;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$l;-><init>(Lrx/e;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/e;I)Lrx/c/o;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;I)",
            "Lrx/c/o",
            "<",
            "Lrx/d/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$j;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/InternalObservableUtils$j;-><init>(Lrx/e;I)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/e;IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/c/o;
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/c/o",
            "<",
            "Lrx/d/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/util/InternalObservableUtils$m;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/util/InternalObservableUtils$m;-><init>(Lrx/e;IJLjava/util/concurrent/TimeUnit;Lrx/h;)V

    return-object v1
.end method

.method public static createReplaySupplier(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/c/o;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/c/o",
            "<",
            "Lrx/d/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$k;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/InternalObservableUtils$k;-><init>(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    return-object v0
.end method

.method public static createRetryDematerializer(Lrx/c/p;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Throwable;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$n;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$n;-><init>(Lrx/c/p;)V

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Lrx/c/p;
    .locals 1
    .param p0, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lrx/internal/util/InternalObservableUtils$b;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lrx/internal/util/InternalObservableUtils$d;

    invoke-direct {v0, p0}, Lrx/internal/util/InternalObservableUtils$d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/InternalObservableUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lrx/internal/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/InternalObservableUtils;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lrx/internal/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method
