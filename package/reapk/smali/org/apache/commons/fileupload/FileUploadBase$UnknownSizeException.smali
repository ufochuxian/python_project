.class public Lorg/apache/commons/fileupload/FileUploadBase$UnknownSizeException;
.super Lorg/apache/commons/fileupload/FileUploadException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownSizeException"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x620241565a84f6a9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1296
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadException;-><init>()V

    .line 1297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    .line 1307
    return-void
.end method
