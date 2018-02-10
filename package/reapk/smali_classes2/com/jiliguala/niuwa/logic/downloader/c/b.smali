.class public Lcom/jiliguala/niuwa/logic/downloader/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
