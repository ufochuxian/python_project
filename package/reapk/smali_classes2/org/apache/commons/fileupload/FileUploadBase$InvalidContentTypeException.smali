.class public Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;
.super Lorg/apache/commons/fileupload/FileUploadException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidContentTypeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7de9dd60c58ed7ccL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1151
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadException;-><init>()V

    .line 1152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1174
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1175
    return-void
.end method
