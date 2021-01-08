.class final Lcom/google/android/gms/internal/zzaks;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzacB:Ljava/util/Map;

.field private synthetic zzacC:Lcom/google/android/gms/internal/zzakr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakr;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaks;->zzacC:Lcom/google/android/gms/internal/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaks;->zzacB:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaks;->zzacC:Lcom/google/android/gms/internal/zzakr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakr;->zzb(Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzajz;

    move-result-object v0

    const-string v1, "pubVideoCmd"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaks;->zzacB:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
