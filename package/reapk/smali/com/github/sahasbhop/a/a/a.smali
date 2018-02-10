.class public Lcom/github/sahasbhop/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/sahasbhop/a/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)I
    .locals 2
    .param p0, "orig"    # Ljava/io/File;

    .prologue
    .line 154
    new-instance v0, Lcom/github/sahasbhop/a/a/a$a;

    invoke-direct {v0, p0}, Lcom/github/sahasbhop/a/a/a$a;-><init>(Ljava/io/File;)V

    .line 155
    .local v0, "pngr":Lcom/github/sahasbhop/a/a/a$a;
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a/a$a;->i()V

    .line 156
    iget v1, v0, Lcom/github/sahasbhop/a/a/a$a;->p:I

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static a(Ljava/io/File;I)Ljava/lang/String;
    .locals 8
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "frameIndex"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "baseName":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "extension":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s_%03d.%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
