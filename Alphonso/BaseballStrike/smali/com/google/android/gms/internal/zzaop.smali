.class final Lcom/google/android/gms/internal/zzaop;
.super Lcom/google/android/gms/internal/zzamf;

# interfaces
.implements Lcom/google/android/gms/internal/zzani;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzamf;",
        "Lcom/google/android/gms/internal/zzani",
        "<",
        "Lcom/google/android/gms/internal/zzaoq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaiH:Lcom/google/android/gms/internal/zzaoq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzami;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamf;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaoq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    iput p2, v0, Lcom/google/android/gms/internal/zzaoq;->zzaiJ:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "int configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaop;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zze(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ga_autoActivityTracking"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    if-eqz p2, :cond_0

    :goto_0
    iput v0, v2, Lcom/google/android/gms/internal/zzaoq;->zzaiK:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "ga_anonymizeIp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    if-eqz p2, :cond_2

    :goto_2
    iput v0, v2, Lcom/google/android/gms/internal/zzaoq;->zzaiL:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    const-string v2, "ga_reportUncaughtExceptions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    if-eqz p2, :cond_4

    :goto_3
    iput v0, v2, Lcom/google/android/gms/internal/zzaoq;->zzaiM:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const-string v0, "bool configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaop;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaoq;->zzaiN:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zzlm()Lcom/google/android/gms/internal/zzang;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    return-object v0
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzaoq;->zzado:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaop;->zzaiH:Lcom/google/android/gms/internal/zzaoq;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzaoq;->zzaiI:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/internal/zzaop;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "string configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaop;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
