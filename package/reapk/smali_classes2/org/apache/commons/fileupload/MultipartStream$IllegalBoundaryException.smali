.class public Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalBoundaryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23de18ecd630fd6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 769
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 779
    return-void
.end method
