.class final Lcom/google/android/gms/internal/zzbwf$17;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zzC(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Locale;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzbwi;->zzcsI:Lcom/google/android/gms/internal/zzbwi;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_3
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbwf$17;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Locale;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbwj;->zzjW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwf$17;->zzC(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
