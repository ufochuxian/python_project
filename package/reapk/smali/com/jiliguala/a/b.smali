.class public Lcom/jiliguala/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "JLGLLog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lb/a/c$a;

    invoke-direct {v0}, Lb/a/c$a;-><init>()V

    invoke-static {v0}, Lb/a/c;->a(Lb/a/c$b;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lb/a/c$b;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 26
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/c$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static final varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 86
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lb/a/c$b;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static final varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/c$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static final varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/c$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static final varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/c$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static final varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "logMsg"    # [Ljava/lang/Object;

    .prologue
    .line 82
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Lb/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/c$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method
