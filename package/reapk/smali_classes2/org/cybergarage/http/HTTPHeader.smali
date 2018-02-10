.class public Lorg/cybergarage/http/HTTPHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MAX_LENGTH:I


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x400

    sput v0, Lorg/cybergarage/http/HTTPHeader;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 43
    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 47
    .local v0, "colonIdx":I
    if-ltz v0, :cond_0

    .line 58
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static final getIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    invoke-static {p0, p1}, Lorg/cybergarage/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getIntegerValue([BLjava/lang/String;)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    invoke-static {p0, p1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/LineNumberReader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "lineStr":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_2

    .line 164
    :cond_0
    const-string v2, ""

    .end local v1    # "lineStr":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 150
    .restart local v1    # "lineStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1, p1}, Lorg/cybergarage/http/HTTPHeader;->getValueFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "result":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 154
    goto :goto_0

    .line 159
    .end local v1    # "lineStr":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 162
    const-string v2, ""

    goto :goto_1
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "strReader":Ljava/io/StringReader;
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lorg/cybergarage/http/HTTPHeader;->MAX_LENGTH:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;I)V

    .line 172
    .local v0, "lineReader":Ljava/io/LineNumberReader;
    invoke-static {v0, p1}, Lorg/cybergarage/http/HTTPHeader;->getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lorg/cybergarage/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValueFromLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 106
    const-string v3, ""

    .line 119
    :goto_0
    return-object v3

    .line 108
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 109
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 111
    const-string v3, ""

    goto :goto_0

    .line 113
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "bigName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    const-string v3, ""

    goto :goto_0

    .line 119
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cybergarage/http/HTTPHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/cybergarage/http/HTTPHeader;->value:Ljava/lang/String;

    .line 76
    return-void
.end method
