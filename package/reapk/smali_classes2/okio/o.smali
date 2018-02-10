.class public final Lokio/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lokio/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/o;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lokio/w;)Lokio/d;
    .locals 1
    .param p0, "sink"    # Lokio/w;

    .prologue
    .line 59
    new-instance v0, Lokio/r;

    invoke-direct {v0, p0}, Lokio/r;-><init>(Lokio/w;)V

    return-object v0
.end method

.method public static a(Lokio/x;)Lokio/e;
    .locals 1
    .param p0, "source"    # Lokio/x;

    .prologue
    .line 50
    new-instance v0, Lokio/s;

    invoke-direct {v0, p0}, Lokio/s;-><init>(Lokio/x;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)Lokio/w;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 64
    new-instance v0, Lokio/y;

    invoke-direct {v0}, Lokio/y;-><init>()V

    invoke-static {p0, v0}, Lokio/o;->a(Ljava/io/OutputStream;Lokio/y;)Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lokio/y;)Lokio/w;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lokio/y;

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lokio/o$1;

    invoke-direct {v0, p1, p0}, Lokio/o$1;-><init>(Lokio/y;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lokio/w;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    invoke-static {p0}, Lokio/o;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v1

    .line 117
    .local v1, "timeout":Lokio/a;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lokio/o;->a(Ljava/io/OutputStream;Lokio/y;)Lokio/w;

    move-result-object v0

    .line 118
    .local v0, "sink":Lokio/w;
    invoke-virtual {v1, v0}, Lokio/a;->a(Lokio/w;)Lokio/w;

    move-result-object v2

    return-object v2
.end method

.method public static a(Ljava/io/File;)Lokio/x;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/o;->a(Ljava/io/InputStream;)Lokio/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lokio/x;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 123
    new-instance v0, Lokio/y;

    invoke-direct {v0}, Lokio/y;-><init>()V

    invoke-static {p0, v0}, Lokio/o;->a(Ljava/io/InputStream;Lokio/y;)Lokio/x;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lokio/y;)Lokio/x;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lokio/y;

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lokio/o$2;

    invoke-direct {v0, p1, p0}, Lokio/o$2;-><init>(Lokio/y;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static varargs a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/x;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 172
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Ljava/io/InputStream;)Lokio/x;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Lokio/w;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/o;->a(Ljava/io/OutputStream;)Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/w;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 191
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lokio/o;->a(Ljava/io/OutputStream;)Lokio/w;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Lokio/x;
    .locals 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    invoke-static {p0}, Lokio/o;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v1

    .line 203
    .local v1, "timeout":Lokio/a;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lokio/o;->a(Ljava/io/InputStream;Lokio/y;)Lokio/x;

    move-result-object v0

    .line 204
    .local v0, "source":Lokio/x;
    invoke-virtual {v1, v0}, Lokio/a;->a(Lokio/x;)Lokio/x;

    move-result-object v2

    return-object v2
.end method

.method private static c(Ljava/net/Socket;)Lokio/a;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 208
    new-instance v0, Lokio/o$3;

    invoke-direct {v0, p0}, Lokio/o$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lokio/w;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/o;->a(Ljava/io/OutputStream;)Lokio/w;

    move-result-object v0

    return-object v0
.end method
