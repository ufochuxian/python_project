.class public final Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;
    .param p4, "identifierCount"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    .line 50
    iput-object p3, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    .line 52
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .locals 6
    .param p0, "template"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    .line 65
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    .line 66
    .local v3, "urlPieces":[Ljava/lang/String;
    new-array v2, v5, [I

    .line 67
    .local v2, "identifiers":[I
    new-array v1, v5, [Ljava/lang/String;

    .line 68
    .local v1, "identifierFormatTags":[Ljava/lang/String;
    invoke-static {p0, v3, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "identifierCount":I
    new-instance v4, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method

.method private static parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 11
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "urlPieces"    # [Ljava/lang/String;
    .param p2, "identifiers"    # [I
    .param p3, "identifierFormatTags"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 92
    const-string v7, ""

    aput-object v7, p1, v10

    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "templateIndex":I
    const/4 v4, 0x0

    .line 95
    .local v4, "identifierCount":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 96
    const-string v7, "$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "dollarIndex":I
    if-ne v0, v9, :cond_0

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0

    .line 100
    :cond_0
    if-eq v0, v6, :cond_1

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 102
    move v6, v0

    goto :goto_0

    .line 103
    :cond_1
    const-string v7, "$$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .line 105
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 107
    :cond_2
    const-string v7, "$"

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 108
    .local v5, "secondIndex":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "identifier":Ljava/lang/String;
    const-string v7, "RepresentationID"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    const/4 v7, 0x1

    aput v7, p2, v4

    .line 132
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 133
    const-string v7, ""

    aput-object v7, p1, v4

    .line 134
    add-int/lit8 v6, v5, 0x1

    goto/16 :goto_0

    .line 112
    :cond_3
    const-string v7, "%0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "formatTagIndex":I
    const-string v1, "%01d"

    .line 114
    .local v1, "formatTag":Ljava/lang/String;
    if-eq v2, v9, :cond_5

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v7, "d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_4
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 121
    :cond_5
    const-string v7, "Number"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 122
    const/4 v7, 0x2

    aput v7, p2, v4

    .line 130
    :goto_2
    aput-object v1, p3, v4

    goto :goto_1

    .line 123
    :cond_6
    const-string v7, "Bandwidth"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 124
    const/4 v7, 0x3

    aput v7, p2, v4

    goto :goto_2

    .line 125
    :cond_7
    const-string v7, "Time"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 126
    const/4 v7, 0x4

    aput v7, p2, v4

    goto :goto_2

    .line 128
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid template: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    .end local v0    # "dollarIndex":I
    .end local v1    # "formatTag":Ljava/lang/String;
    .end local v2    # "formatTagIndex":I
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v5    # "secondIndex":I
    :cond_9
    return v4
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 8
    .param p1, "representationId"    # Ljava/lang/String;
    .param p2, "segmentNumber"    # I
    .param p3, "bandwidth"    # I
    .param p4, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    if-ge v1, v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    if-ne v2, v6, :cond_1

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 161
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 163
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 165
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
