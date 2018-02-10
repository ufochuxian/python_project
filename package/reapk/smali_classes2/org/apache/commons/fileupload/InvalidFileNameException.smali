.class public Lorg/apache/commons/fileupload/InvalidFileNameException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6df0bfc62ecd7a86L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/fileupload/InvalidFileNameException;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/fileupload/InvalidFileNameException;->name:Ljava/lang/String;

    return-object v0
.end method
