.class public final Lrx/internal/util/a/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 35
    const-string v4, "rx.unsafe-disable"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    sput-boolean v3, Lrx/internal/util/a/an;->b:Z

    .line 42
    const/4 v2, 0x0

    .line 50
    .local v2, "u":Lsun/misc/Unsafe;
    :try_start_0
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 51
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 52
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lsun/misc/Unsafe;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    sput-object v2, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    .line 57
    return-void

    .line 35
    .end local v2    # "u":Lsun/misc/Unsafe;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 53
    .restart local v2    # "u":Lsun/misc/Unsafe;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;J)I
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 69
    :cond_0
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 70
    .local v4, "current":I
    add-int/lit8 v5, v4, 0x1

    .line 71
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return v4
.end method

.method public static a(Ljava/lang/Object;JI)I
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "n"    # I

    .prologue
    .line 79
    :cond_0
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 80
    .local v4, "current":I
    add-int v5, v4, p3

    .line 81
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return v4
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 113
    .local v1, "f":Ljava/lang/reflect/Field;
    sget-object v3, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 114
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    .line 116
    .local v2, "ie":Ljava/lang/InternalError;
    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    throw v2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    sget-boolean v0, Lrx/internal/util/a/an;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;JII)Z
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "expected"    # I
    .param p4, "newValue"    # I

    .prologue
    .line 97
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;JI)I
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "newValue"    # I

    .prologue
    .line 89
    :cond_0
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 90
    .local v4, "current":I
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return v4
.end method
